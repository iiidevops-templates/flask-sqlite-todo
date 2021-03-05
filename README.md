## Flask todo sqlite example

## 範例教學來源
https://youtu.be/yKHJsLUENl0

## (local)本地環境隔離快速專案部屬(隨機PORT) + 本地環境Postman-collection(newman)自動測試
需安裝Docker, 若在Linux環境需額外手動安裝docker-compose, 部屬結果與UI相同
``` 
docker-compose up -d --build 
```
部屬包含flask網頁 + Postman-collection(newman)自動測試, 自動測試報告結果會自動產生在`app/newman-report.xml`, 驗證後即可上傳程式碼

## (local)Postman-collection(newman)自動測試以及報告文件
當執行本地環境快速專案部屬時，會自動將您的網站與資料庫部屬完成後再進行自動測試
* 自動測試的檔案在`app/postman_collection_local.json` 使用者可以按照開發上的需求去進行修改
:warning: 
```
  若您是在本地環境直接開發的話，可能會透過瀏覽器連http://localhost:5000
  而到了json檔案內就將http://localhost:5000改成http://web:5000即可
```
自動測試報告結果會自動產生在`app/newman-report.xml`

## 修改程式碼注意事項
1. 修改Python版本  
版本若非Python:3.8, 想要更換版本請至`Dockefile`修改為自己想要的版本(如需要本機上做測試則須一併連同`Dockerfile.local`去做修改)
2. 部屬環境額外環境變數
若開發需求上可能有針對專案需要的特別環境變數，由於目前此需求不再系統開發考慮範圍內，因此可能要麻煩使用者透過修改`Dockerfile`的形式去加入
```dockerfile
ENV 環境變數名稱1 值1
ENV 環境變數名稱2 值2
ENV 環境變數名稱3 值3
```

## iiidevops
* 專案內`.rancher-pipeline.yml`請勿更動，產品系統設計上不支援pipeline修改
* `iiidevops`資料夾內`pipeline_settings.json`請勿更動
* `postman`資料夾內則是您在devops管理網頁上的Postman-collection(newman)自動測試檔案，devops系統會以`postman`資料夾內檔案做自動測試

## reference
https://www.python-engineer.com/posts/flask-todo-app/
