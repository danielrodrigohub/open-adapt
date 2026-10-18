.class public final Lcc/e$h;
.super Lrd/o;
.source "OIDCRepositoryImpl.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/e;->f(Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lob/c;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcc/e;


# direct methods
.method public constructor <init>(Lcc/e;)V
    .locals 0

    iput-object p1, p0, Lcc/e$h;->h:Lcc/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lob/c;

    .line 2
    iget-object p1, p0, Lcc/e$h;->h:Lcc/e;

    .line 3
    iget-object p1, p1, Lcc/e;->a:Lob/a;

    .line 4
    iget-object p1, p1, Lob/a;->a:Lob/a$a;

    .line 5
    invoke-interface {p1}, Lob/a$a;->d()Lu9/b;

    move-result-object p1

    const-string v0, "<this>"

    .line 6
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "name"

    const-string v3, "oidc-auth-component"

    .line 9
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "version"

    const-string v3, "0.13.0"

    .line 10
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "module"

    .line 11
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "classification"

    const-string v2, "core buy flow"

    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "eventName"

    const-string v2, "Account Logged Out"

    .line 13
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clickActivity"

    const-string v3, "profile:log out"

    .line 14
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v3, v1, [Lfd/e;

    const-string v4, "profile"

    const-string v5, ""

    .line 15
    invoke-static {v4, v5}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 16
    new-instance v6, Lfd/e;

    const-string v7, "pageName"

    invoke-direct {v6, v7, v5}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    aput-object v6, v3, v5

    .line 17
    new-instance v5, Lfd/e;

    const-string v6, "pageType"

    invoke-direct {v5, v6, v4}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v5, v3, v4

    .line 18
    invoke-static {v3}, Lgd/z;->A([Lfd/e;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "view"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v3, Lu9/a$a;

    invoke-direct {v3, v2, v0, v1}, Lu9/a$a;-><init>(Ljava/lang/String;Ljava/util/Map;I)V

    .line 20
    invoke-interface {p1, v3}, Lu9/b;->a(Lu9/a$a;)V

    .line 21
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
