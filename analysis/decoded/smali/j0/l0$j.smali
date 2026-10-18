.class public final Lj0/l0$j;
.super Lj0/l0$i;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# static fields
.field public static final q:Lj0/l0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lj0/l0;->l(Landroid/view/WindowInsets;Landroid/view/View;)Lj0/l0;

    move-result-object v0

    .line 3
    sput-object v0, Lj0/l0$j;->q:Lj0/l0;

    return-void
.end method

.method public constructor <init>(Lj0/l0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj0/l0$i;-><init>(Lj0/l0;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public f(I)La0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/l0$f;->c:Landroid/view/WindowInsets;

    .line 2
    invoke-static {p1}, Lj0/l0$l;->a(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 3
    invoke-static {p1}, La0/c;->d(Landroid/graphics/Insets;)La0/c;

    move-result-object p1

    return-object p1
.end method
