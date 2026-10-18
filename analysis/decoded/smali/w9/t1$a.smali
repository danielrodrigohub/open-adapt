.class public final Lw9/t1$a;
.super Lrd/o;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw9/t1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/i;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lv9/a;

.field public final synthetic i:Ljd/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljd/d<",
            "Lba/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv9/a;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv9/a;",
            "Ljd/d<",
            "-",
            "Lba/e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lw9/t1$a;->h:Lv9/a;

    iput-object p2, p0, Lw9/t1$a;->i:Ljd/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lv9/i;

    const-string v0, "$this$deviceControllerListener"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 4
    new-instance v1, Lw9/q1;

    iget-object v2, p0, Lw9/t1$a;->h:Lv9/a;

    iget-object v3, p0, Lw9/t1$a;->i:Ljd/d;

    invoke-direct {v1, v0, v2, v3}, Lw9/q1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lv9/a;Ljd/d;)V

    .line 5
    iput-object v1, p1, Lv9/i;->b:Lqd/l;

    .line 6
    new-instance v1, Lw9/s1;

    iget-object v2, p0, Lw9/t1$a;->h:Lv9/a;

    iget-object v3, p0, Lw9/t1$a;->i:Ljd/d;

    invoke-direct {v1, v0, v2, v3}, Lw9/s1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lv9/a;Ljd/d;)V

    .line 7
    iput-object v1, p1, Lv9/i;->d:Lqd/l;

    .line 8
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
