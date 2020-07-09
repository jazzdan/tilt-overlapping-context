To reproduce:

1. `tilt up`
2. Edit `mock_server/src/index.js`
3. Observe this error in tilt:

```
1 File Changed: [mock_server/src/index.js] • overlap
Will not perform Live Update because:
	Found file(s) not matching any sync (files: mock_server/src/index.js)
Falling back to a full image build + deploy
```