.class public final Lj0/a0$q;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/OnReceiveContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "q"
.end annotation


# instance fields
.field public final a:Lj0/r;


# direct methods
.method public constructor <init>(Lj0/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj0/a0$q;->a:Lj0/r;

    return-void
.end method


# virtual methods
.method public final onReceiveContent(Landroid/view/View;Landroid/view/ContentInfo;)Landroid/view/ContentInfo;
    .locals 2

    .line 1
    new-instance v0, Lj0/c;

    new-instance v1, Lj0/c$d;

    invoke-direct {v1, p2}, Lj0/c$d;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {v0, v1}, Lj0/c;-><init>(Lj0/c$e;)V

    .line 2
    iget-object v1, p0, Lj0/a0$q;->a:Lj0/r;

    invoke-interface {v1, p1, v0}, Lj0/r;->a(Landroid/view/View;Lj0/c;)Lj0/c;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-ne p1, v0, :cond_1

    return-object p2

    .line 3
    :cond_1
    iget-object p1, p1, Lj0/c;->a:Lj0/c$e;

    invoke-interface {p1}, Lj0/c$e;->c()Landroid/view/ContentInfo;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
