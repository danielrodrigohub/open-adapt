package com.openadapt;

public final class UpdatePolicyTest {
    static int count;
    static void check(boolean value) {count++;if(!value)throw new AssertionError("Update check "+count);}
    static void reject(Runnable code) {try{code.run();throw new AssertionError("Invalid update accepted");}catch(IllegalArgumentException expected){count++;}}
    public static void main(String[] args) {
        check(UpdatePolicy.compare("0.10.0","0.9.99")>0);
        check(UpdatePolicy.compare("v1.2.3-experimental","1.2.3")==0);
        check(UpdatePolicy.compare("1.2.2","1.2.3")<0);
        check(UpdatePolicy.compare("2.0.0","1.99.99")>0);
        for(String v:new String[]{"latest","1.2","1.2.3.4","-1.2.3","v1.2.3/../../","1000000.2.3","1.2.3-beta"})reject(()->UpdatePolicy.version(v));
        check(UpdatePolicy.transport("https://api.github.com/repos/danielrodrigohub/open-adapt/releases"));
        check(UpdatePolicy.transport("https://release-assets.githubusercontent.com/file?token=example"));
        for(String url:new String[]{"http://github.com/a","https://evil.test/a","https://github.com.evil.test/a","https://github.com@evil.test/a","https://user@github.com/a","https://github.com:444/a","file:///data/private"})check(!UpdatePolicy.transport(url));
        check(UpdatePolicy.transport(UpdatePolicy.mirror("0.3.1")));
        check(UpdatePolicy.mirror("1.2.3").equals("https://danielrodrigohub.github.io/open-adapt/downloads/OpenAdapt-v1.2.3.apk"));
        for(String url:new String[]{"https://evil.github.io/open-adapt/downloads/OpenAdapt-v1.2.3.apk","https://danielrodrigohub.github.io/other/OpenAdapt-v1.2.3.apk","https://danielrodrigohub.github.io/open-adapt/downloads/OpenAdapt-v1.2.3.apk?redirect=evil","https://danielrodrigohub.github.io/open-adapt/downloads/OpenAdapt-v1.2.3.apk#fragment","https://danielrodrigohub.github.io/open-adapt/downloads/../private","http://danielrodrigohub.github.io/open-adapt/downloads/OpenAdapt-v1.2.3.apk"})check(!UpdatePolicy.transport(url));
        reject(()->UpdatePolicy.mirror("../1.2.3"));
        reject(()->UpdatePolicy.mirror("v1.2.3-experimental"));
        String future=(UpdatePolicy.version(BuildInfo.VERSION)[0]+1)+".0.0";
        String tag="v"+future+"-experimental",good="https://github.com/"+UpdatePolicy.REPOSITORY+"/releases/download/"+tag+"/"+UpdatePolicy.APK;
        check(UpdatePolicy.asset(good,tag,UpdatePolicy.APK));
        check(!UpdatePolicy.asset(good.replace("danielrodrigohub","another"),tag,UpdatePolicy.APK));
        check(!UpdatePolicy.asset(good+"?redirect=evil",tag,UpdatePolicy.APK));
        check(!UpdatePolicy.asset(good+"#fragment",tag,UpdatePolicy.APK));
        check(!UpdatePolicy.asset(good,tag,UpdatePolicy.MANIFEST));
        String sha="0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef";
        UpdatePolicy.candidate(tag,future,2017062202,2017062201,UpdatePolicy.PACKAGE,71000000,sha);count++;
        reject(()->UpdatePolicy.candidate(tag,future,2017062201,2017062201,UpdatePolicy.PACKAGE,71000000,sha));
        reject(()->UpdatePolicy.candidate(tag,future,2017062200,2017062201,UpdatePolicy.PACKAGE,71000000,sha));
        reject(()->UpdatePolicy.candidate(tag,future,2017062202,2017062201,"com.other.app",71000000,sha));
        reject(()->UpdatePolicy.candidate(tag,future.substring(0,future.length()-1)+"1",2017062202,2017062201,UpdatePolicy.PACKAGE,71000000,sha));
        reject(()->UpdatePolicy.candidate(tag,future,2017062202,2017062201,UpdatePolicy.PACKAGE,UpdatePolicy.MAX_APK+1,sha));
        reject(()->UpdatePolicy.candidate(tag,future,2017062202,2017062201,UpdatePolicy.PACKAGE,0,sha));
        reject(()->UpdatePolicy.candidate(tag,future,2017062202,2017062201,UpdatePolicy.PACKAGE,71000000,"bad"));
        reject(()->UpdatePolicy.candidate("v0.1.0","0.1.0",2017062202,2017062201,UpdatePolicy.PACKAGE,71000000,sha));
        System.out.println("UpdatePolicyTest: "+count+" assertions passed");
    }
}
