BASEDIR=$(dirname $0)
exec "$BASEDIR/luajit" -e "json=require('cjson');util=require('cjson.util');env={json={null=json.null},null=json.null};t=util.run_script('data = '..util.file_load(arg[1]),env);print(json.encode(t.data));" "$@"
