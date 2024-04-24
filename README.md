# data-platform-business-partner-sql 
data-platform-business-partner-sql は、データ連携基盤において、ビジネスパートナデータを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-business-partner-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview 

## sqlの設定ファイル  
data-platform-business-partner-sql には、sqlの設定ファイルとして、以下のファイルが含まれます。 

* data-platform-business-partner-sql-general-data.sql （データ連携基盤 ビジネスパートナ - 一般データ）
* data-platform-business-partner-sql-general-doc-data.sql（データ連携基盤 ビジネスパートナ - 一般文書データ）
* data-platform-business-partner-sql-role-data.sql（データ連携基盤 ビジネスパートナ - ロールデータ） 
* data-platform-business-partner-sql-person-data.sql（データ連携基盤 ビジネスパートナ - 個人データ）
* data-platform-business-partner-sql-address-data.sql （データ連携基盤 ビジネスパートナ - 住所データ）
* data-platform-business-partner-sql-rank-data.sql（データ連携基盤 ビジネスパートナ - ランクデータ）
* data-platform-business-partner-sql-person-mobile-phone-auth-data.sql（データ連携基盤 ビジネスパートナ - 個人携帯電話認証データ）
* data-platform-business-partner-sql-person-google-account-auth-data.sql（データ連携基盤 ビジネスパートナ - 個人Googleアカウント認証データ）
* data-platform-business-partner-sql-person-instagram-auth-data.sql（データ連携基盤 ビジネスパートナ - 個人Instagram認証データ）
* data-platform-business-partner-sql-person-public-authentication-data.sql（データ連携基盤 ビジネスパートナ - 個人公的認証データ）
* data-platform-business-partner-sql-fin-inst-data.sql （データ連携基盤 ビジネスパートナ - 金融機関データ）
* data-platform-business-partner-sql-accounting-data.sql（データ連携基盤 ビジネスパートナ - 会計データ）   

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法  
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。
