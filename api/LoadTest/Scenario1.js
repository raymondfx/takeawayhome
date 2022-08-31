import http from 'k6/http';

import {check, sleep} from 'k6';

export const options = {
stages: [
    { duration: '30s', target: 20}, // simulate ramp-up of traffic from 1 to 20 users over 30 Seconds
    { duration: '1m30s', target: 10}, // ramp-down to 10 users over 1 minute 30 Seconds
    { duration: '20s', target: 0}, // ramp-down to 0 users
],
thresholds: {
    http_req_duration: ['p(99)<1500'], // 99% of requests must complete below 1.5s
  },
};

export default function() {
    const res = http.get('https://fakestoreapi.com/products');
    check(res, {'status was 200': (r) => r.status == 200});
    sleep(1);
}
