.class public final Lv9/q$a;
.super Lrd/o;
.source "AdaptKitFitListener.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv9/q;->a(Lba/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lqd/l<",
        "-",
        "Lba/v;",
        "+",
        "Lfd/o;",
        ">;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lba/v;


# direct methods
.method public constructor <init>(Lba/v;)V
    .locals 0

    iput-object p1, p0, Lv9/q$a;->h:Lba/v;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lqd/l;

    const-string v0, "$this$post"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lv9/q$a;->h:Lba/v;

    invoke-interface {p1, v0}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
