# addressing

## formula

Proxmox VM/LXC ID `ABC` maps to IP `10.10.A.BC`

| ID | A | BC | IP |
|---|---|---|---|
| 101 | 1 | 01 | 10.10.1.1 |
| 108 | 1 | 08 | 10.10.1.8 |
| 205 | 2 | 05 | 10.10.2.5 |
| 322 | 3 | 22 | 10.10.3.22 |

## rules

- IDs divisible by 100 (100, 200, 300...) produce network addresses — reserved, never use


## ID ranges

| Range | Purpose |
|---|---|
| 1XX | core — infrastructure that everything depends on |
| 2XX | prod — running services |
