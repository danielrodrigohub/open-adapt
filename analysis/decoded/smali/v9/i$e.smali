.class public final Lv9/i$e;
.super Lrd/o;
.source "AdaptKitDeviceControllerListener.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv9/i;->e(Lv9/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/y1;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lqd/l;


# direct methods
.method public constructor <init>(Lv9/i;Lqd/l;)V
    .locals 0

    iput-object p2, p0, Lv9/i$e;->h:Lqd/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lda/g;

    const-string v0, "$this$post"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lv9/i$e;->h:Lqd/l;

    .line 4
    new-instance v1, Lv9/h2;

    invoke-direct {v1, p1}, Lv9/h2;-><init>(Lda/g;)V

    .line 5
    invoke-interface {v0, v1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-boolean v0, p1, Lda/g;->i:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, v1, Lv9/h2;->a:Lqd/l;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    iget-boolean v0, p1, Lda/g;->j:Z

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, v1, Lv9/h2;->b:Lqd/l;

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    iget-object v0, v1, Lv9/h2;->c:Lqd/p;

    if-eqz v0, :cond_2

    .line 13
    invoke-static {p1}, Landroidx/lifecycle/o;->F(Lda/g;)Lw9/u1;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lqd/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_2
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
