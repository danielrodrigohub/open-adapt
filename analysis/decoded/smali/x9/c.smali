.class public final Lx9/c;
.super Lx9/d;
.source "ConnectedConditionalCheck.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx9/d<",
        "Lv9/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Lw9/a;

.field public final f:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lv9/j;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Z


# direct methods
.method public constructor <init>(Lw9/a;Lda/d;Lda/d;Lea/m;Lqd/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/a;",
            "Lda/d;",
            "Lda/d;",
            "Lea/m;",
            "Lqd/l<",
            "-",
            "Lv9/j;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adaptKitIdentifierShoe"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "leftConnectionState"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rightConnectionState"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptKitPairedDevices"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publishConditionError"

    invoke-static {p5, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lx9/d;-><init>(Lda/d;Lda/d;Lea/m;)V

    .line 2
    iput-object p1, p0, Lx9/c;->e:Lw9/a;

    .line 3
    iput-object p5, p0, Lx9/c;->f:Lqd/l;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lx9/c;->g:Z

    return-void
.end method


# virtual methods
.method public final a()Lw9/a;
    .locals 1

    iget-object v0, p0, Lx9/c;->e:Lw9/a;

    return-object v0
.end method

.method public final b()Lv9/m;
    .locals 3

    .line 1
    new-instance v0, Lv9/j;

    .line 2
    iget-object v1, p0, Lx9/c;->e:Lw9/a;

    .line 3
    iget-object v2, p0, Lx9/d;->d:Ljava/lang/String;

    .line 4
    invoke-direct {v0, v1, v2}, Lv9/j;-><init>(Lw9/a;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "ConnectedConditionalCheck"

    return-object v0
.end method

.method public final e()Lqd/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/l<",
            "Lv9/j;",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx9/c;->f:Lqd/l;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lx9/c;->g:Z

    return v0
.end method
