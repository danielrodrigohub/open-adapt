.class public final Lic/j$a;
.super Ljava/lang/Object;
.source "ConnectionManager.kt"

# interfaces
.implements Lnc/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/j;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc/a<",
        "Lmc/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Lic/p;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lic/p;)V
    .locals 0

    iput-object p1, p0, Lic/j$a;->h:Ljava/lang/String;

    iput-object p2, p0, Lic/j$a;->i:Ljava/lang/String;

    iput-object p3, p0, Lic/j$a;->j:Ljava/lang/String;

    iput-object p4, p0, Lic/j$a;->k:Lic/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const-wide/16 v0, 0x14

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2
    sget-object v0, Lic/g;->b:Lic/g;

    .line 3
    new-instance v1, Lic/b;

    .line 4
    iget-object v2, p0, Lic/j$a;->i:Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lic/j$a;->j:Ljava/lang/String;

    const-string v4, "address"

    invoke-static {v3, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v4, p0, Lic/j$a;->h:Ljava/lang/String;

    .line 7
    iget-object v5, p0, Lic/j$a;->k:Lic/p;

    .line 8
    iget-object v5, v5, Lic/p;->d:[B

    .line 9
    invoke-static {v5}, Lg7/b;->e([B)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-direct {v1, v2, v3, v4, v5}, Lic/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v1}, Lic/g;->l(Lf8/b;)V

    .line 12
    invoke-virtual {v0}, Lic/g;->h()V

    return-void
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lmc/c;

    const-string v0, "response"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    const-string v0, "HealthCheck[firmwareVersion: "

    .line 4
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lic/j$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Battery[percent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v2, p1, Lmc/c;->h:I

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget p1, p1, Lmc/c;->i:I

    .line 9
    invoke-static {p1}, Lca/a;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    .line 11
    invoke-static/range {v1 .. v7}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 12
    invoke-virtual {p0}, Lic/j$a;->a()V

    return-void
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    const-string v0, "HealthCheckError[message: "

    .line 2
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    .line 4
    invoke-static/range {v1 .. v7}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lic/j$a;->a()V

    return-void
.end method
