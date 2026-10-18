.class public final Lr7/c;
.super Lr7/f;
.source "DeepLinkNav.kt"


# instance fields
.field public final a:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Landroid/app/Activity;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lr7/b;->h:Lr7/b;

    const-string v1, "navigate"

    .line 2
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lr7/f;-><init>()V

    iput-object v0, p0, Lr7/c;->a:Lqd/l;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lr7/c;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr7/c;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public final b(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lr7/f;->c(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lr7/c;->a:Lqd/l;

    invoke-interface {p2, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
