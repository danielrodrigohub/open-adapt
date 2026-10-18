.class public final Lic/j;
.super Ljava/lang/Object;
.source "ConnectionManager.kt"

# interfaces
.implements Lnc/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc/c<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lhc/l0;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Lic/p;


# direct methods
.method public constructor <init>(Lhc/l0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lic/p;)V
    .locals 0

    iput-object p1, p0, Lic/j;->h:Lhc/l0;

    iput-object p2, p0, Lic/j;->i:Ljava/lang/String;

    iput-object p3, p0, Lic/j;->j:Ljava/lang/String;

    iput-object p4, p0, Lic/j;->k:Ljava/lang/String;

    iput-object p5, p0, Lic/j;->l:Lic/p;

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
    iget-object v0, p0, Lic/j;->h:Lhc/l0;

    new-instance v1, Lic/j$a;

    iget-object v2, p0, Lic/j;->i:Ljava/lang/String;

    iget-object v3, p0, Lic/j;->j:Ljava/lang/String;

    iget-object v4, p0, Lic/j;->k:Ljava/lang/String;

    iget-object v5, p0, Lic/j;->l:Lic/p;

    invoke-direct {v1, v2, v3, v4, v5}, Lic/j$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lic/p;)V

    invoke-interface {v0, v1}, Lhc/l0;->w(Lnc/a;)V

    return-void
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    invoke-virtual {p0}, Lic/j;->a()V

    return-void
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lic/j;->a()V

    return-void
.end method
