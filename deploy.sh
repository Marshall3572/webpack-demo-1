yarn build && 
git checkout gh-pages &&
# 因为删除源代码我们只需要执行一次，所以不需要
# rm -rf src *.json *.sh *.js yarn.lock
rm -rf *.html *.js *.css *.png &&
mv dist/* ./ &&
rm -rf dist
git add . &&
git commit -m 'update' &&
git push