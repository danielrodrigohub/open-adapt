.class public final Lf/h$c;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/appcompat/view/menu/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic h:Lf/h;


# direct methods
.method public constructor <init>(Lf/h;)V
    .locals 0

    iput-object p1, p0, Lf/h$c;->h:Lf/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/appcompat/view/menu/e;Z)V
    .locals 0

    iget-object p2, p0, Lf/h$c;->h:Lf/h;

    invoke-virtual {p2, p1}, Lf/h;->C(Landroidx/appcompat/view/menu/e;)V

    return-void
.end method

.method public final c(Landroidx/appcompat/view/menu/e;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf/h$c;->h:Lf/h;

    invoke-virtual {v0}, Lf/h;->N()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x6c

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
