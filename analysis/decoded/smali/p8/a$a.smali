.class public final Lp8/a$a;
.super Lrd/o;
.source "AdaptPairActivity.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp8/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "[",
        "Ljava/lang/String;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lp8/a;


# direct methods
.method public constructor <init>(Lp8/a;)V
    .locals 0

    iput-object p1, p0, Lp8/a$a;->h:Lp8/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, [Ljava/lang/String;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lp8/a$a;->h:Lp8/a;

    .line 4
    iget-object p1, p1, Landroidx/activity/ComponentActivity;->k:Landroidx/lifecycle/r;

    .line 5
    iget-object p1, p1, Landroidx/lifecycle/r;->c:Landroidx/lifecycle/i$c;

    .line 6
    sget-object v0, Landroidx/lifecycle/i$c;->k:Landroidx/lifecycle/i$c;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/i$c;->b(Landroidx/lifecycle/i$c;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    sget-object p1, Lh9/c;->c:Lh9/c;

    iget-object v0, p0, Lp8/a$a;->h:Lp8/a;

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 8
    :cond_0
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
