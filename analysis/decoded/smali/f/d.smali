.class public final Lf/d;
.super Ljava/lang/Object;
.source "AppCompatActivity.java"

# interfaces
.implements Ld/b;


# instance fields
.field public final synthetic a:Lf/e;


# direct methods
.method public constructor <init>(Lf/e;)V
    .locals 0

    iput-object p1, p0, Lf/d;->a:Lf/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/d;->a:Lf/e;

    invoke-virtual {v0}, Lf/e;->h0()Lf/g;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lf/g;->i()V

    .line 3
    iget-object v1, p0, Lf/d;->a:Lf/e;

    .line 4
    iget-object v1, v1, Landroidx/activity/ComponentActivity;->l:Lb1/c;

    .line 5
    iget-object v1, v1, Lb1/c;->b:Lb1/b;

    const-string v2, "androidx:appcompat"

    .line 6
    invoke-virtual {v1, v2}, Lb1/b;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 7
    invoke-virtual {v0}, Lf/g;->l()V

    return-void
.end method
