.class public final Lf/i;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Lj0/q;


# instance fields
.field public final synthetic a:Lf/h;


# direct methods
.method public constructor <init>(Lf/h;)V
    .locals 0

    iput-object p1, p0, Lf/i;->a:Lf/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lj0/l0;)Lj0/l0;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lj0/l0;->f()I

    move-result v0

    .line 2
    iget-object v1, p0, Lf/i;->a:Lf/h;

    invoke-virtual {v1, p2}, Lf/h;->V(Lj0/l0;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p2}, Lj0/l0;->d()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Lj0/l0;->e()I

    move-result v2

    .line 5
    invoke-virtual {p2}, Lj0/l0;->c()I

    move-result v3

    .line 6
    invoke-virtual {p2, v0, v1, v2, v3}, Lj0/l0;->i(IIII)Lj0/l0;

    move-result-object p2

    .line 7
    :cond_0
    invoke-static {p1, p2}, Lj0/a0;->k(Landroid/view/View;Lj0/l0;)Lj0/l0;

    move-result-object p1

    return-object p1
.end method
