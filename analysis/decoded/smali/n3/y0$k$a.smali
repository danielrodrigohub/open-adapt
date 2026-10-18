.class public final Ln3/y0$k$a;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y0$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/net/Uri;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ln3/y0$k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Ln3/y0$k;->a:Landroid/net/Uri;

    iput-object v0, p0, Ln3/y0$k$a;->a:Landroid/net/Uri;

    .line 3
    iget-object v0, p1, Ln3/y0$k;->b:Ljava/lang/String;

    iput-object v0, p0, Ln3/y0$k$a;->b:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Ln3/y0$k;->c:Ljava/lang/String;

    iput-object v0, p0, Ln3/y0$k$a;->c:Ljava/lang/String;

    .line 5
    iget v0, p1, Ln3/y0$k;->d:I

    iput v0, p0, Ln3/y0$k$a;->d:I

    .line 6
    iget v0, p1, Ln3/y0$k;->e:I

    iput v0, p0, Ln3/y0$k$a;->e:I

    .line 7
    iget-object v0, p1, Ln3/y0$k;->f:Ljava/lang/String;

    iput-object v0, p0, Ln3/y0$k$a;->f:Ljava/lang/String;

    .line 8
    iget-object p1, p1, Ln3/y0$k;->g:Ljava/lang/String;

    iput-object p1, p0, Ln3/y0$k$a;->g:Ljava/lang/String;

    return-void
.end method
