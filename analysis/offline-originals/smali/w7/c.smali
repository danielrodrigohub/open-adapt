.class public final Lw7/c;
.super Ljava/lang/Object;
.source "BigfootAuthProvider.kt"

# interfaces
.implements Lvc/a;


# static fields
.field public static final a:Lw7/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw7/c;

    invoke-direct {v0}, Lw7/c;-><init>()V

    sput-object v0, Lw7/c;->a:Lw7/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lw7/c$a;

    invoke-direct {v1, v0}, Lw7/c$a;-><init>(Ljd/d;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Ljd/f;Lqd/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lw7/d;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    sget-object v3, Lo7/x;->a:Lo7/x;

    const-string v1, "Force logout of user. Refresh Token could not refresh."

    invoke-virtual {v3, v1}, Lo7/x;->a(Ljava/lang/String;)V

    const-string v4, "BigfootAuthProvider"

    const-string v5, "Force logout of user. Refresh Token could not refresh."

    .line 4
    new-instance v6, Ljava/lang/Exception;

    const-string v1, "Unite Could Not Refresh Access Token"

    invoke-direct {v6, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    .line 5
    invoke-static/range {v3 .. v9}, Lxc/a$a;->a(Lxc/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 6
    sget-object v1, Ls9/m;->a:Ls9/m;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2}, Ls9/m;->a(ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 7
    sget-object v2, Lo7/x;->a:Lo7/x;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Refresh Token error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lo7/x;->a(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {v1}, Lcom/nike/adapt/BigfootApplication$e;->c()Lg8/a;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lg8/a;->f:Lpb/b;

    .line 3
    invoke-virtual {v1}, Lpb/b;->a()Lob/h;

    move-result-object v1

    invoke-interface {v1}, Lob/h;->b()Lob/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lob/b;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    .line 4
    invoke-static {}, Lw7/d;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    sget-object v3, Lo7/x;->a:Lo7/x;

    const-string v1, "Force logout of user. Access Token came back as null."

    invoke-virtual {v3, v1}, Lo7/x;->a(Ljava/lang/String;)V

    const-string v4, "BigfootAuthProvider"

    const-string v5, "Force logout of user. Access Token came back as null."

    .line 6
    new-instance v6, Ljava/lang/Exception;

    const-string v1, "Unite Could Not Refresh Access Token"

    invoke-direct {v6, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    .line 7
    invoke-static/range {v3 .. v9}, Lxc/a$a;->a(Lxc/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 8
    sget-object v1, Ls9/m;->a:Ls9/m;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2}, Ls9/m;->a(ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 9
    sget-object v2, Lo7/x;->a:Lo7/x;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Access Token error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lo7/x;->a(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method
