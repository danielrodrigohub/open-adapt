.class public final Lic/k;
.super Ljava/lang/Object;
.source "ConnectionManager.kt"

# interfaces
.implements Lnc/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lhc/l0;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Lic/p;


# direct methods
.method public constructor <init>(Lhc/l0;Ljava/lang/String;Ljava/lang/String;Lic/p;)V
    .locals 0

    iput-object p1, p0, Lic/k;->h:Lhc/l0;

    iput-object p2, p0, Lic/k;->i:Ljava/lang/String;

    iput-object p3, p0, Lic/k;->j:Ljava/lang/String;

    iput-object p4, p0, Lic/k;->k:Lic/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;)V
    .locals 7

    .line 1
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    const-string p1, "response"

    .line 2
    invoke-static {v2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x14

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 4
    iget-object p1, p0, Lic/k;->h:Lhc/l0;

    new-instance v6, Lic/j;

    iget-object v3, p0, Lic/k;->i:Ljava/lang/String;

    iget-object v4, p0, Lic/k;->j:Ljava/lang/String;

    iget-object v5, p0, Lic/k;->k:Lic/p;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lic/j;-><init>(Lhc/l0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lic/p;)V

    invoke-interface {p1, v6}, Lhc/l0;->f(Lnc/c;)V

    return-void
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lic/g;->b:Lic/g;

    .line 2
    new-instance v0, Lic/r;

    iget-object v1, p0, Lic/k;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lic/r;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v0}, Lic/g;->l(Lf8/b;)V

    .line 4
    invoke-virtual {p1}, Lic/g;->h()V

    return-void
.end method
