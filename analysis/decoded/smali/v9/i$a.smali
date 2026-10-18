.class public final Lv9/i$a;
.super Lrd/o;
.source "AdaptKitDeviceControllerListener.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv9/i;->d(Lv9/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/f;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lqd/l;


# direct methods
.method public constructor <init>(Lv9/i;Lqd/l;)V
    .locals 0

    iput-object p2, p0, Lv9/i$a;->h:Lqd/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lv9/f;

    const-string v0, "$this$post"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lv9/i$a;->h:Lqd/l;

    .line 4
    invoke-static {p1, v0}, La0/b;->d(Lv9/f;Lqd/l;)Lv9/g2;

    move-result-object v0

    .line 5
    iget-object v1, v0, Lv9/g2;->a:Lv9/f;

    .line 6
    iget-boolean v1, v1, Lv9/f;->l:Z

    .line 7
    iget-object v0, v0, Lv9/g2;->b:Lqd/l;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
