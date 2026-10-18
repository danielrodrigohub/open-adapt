.class public final Ln3/y0$e$a;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y0$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/UUID;

.field public b:Landroid/net/Uri;

.field public c:Lu6/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/x<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Lu6/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public h:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lu6/q0;->n:Lu6/q0;

    iput-object v0, p0, Ln3/y0$e$a;->c:Lu6/x;

    .line 3
    sget-object v0, Lu6/v;->i:Lu6/v$b;

    .line 4
    sget-object v0, Lu6/p0;->l:Lu6/p0;

    .line 5
    iput-object v0, p0, Ln3/y0$e$a;->g:Lu6/v;

    return-void
.end method

.method public constructor <init>(Ln3/y0$e;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object v0, p1, Ln3/y0$e;->a:Ljava/util/UUID;

    iput-object v0, p0, Ln3/y0$e$a;->a:Ljava/util/UUID;

    .line 8
    iget-object v0, p1, Ln3/y0$e;->b:Landroid/net/Uri;

    iput-object v0, p0, Ln3/y0$e$a;->b:Landroid/net/Uri;

    .line 9
    iget-object v0, p1, Ln3/y0$e;->c:Lu6/x;

    iput-object v0, p0, Ln3/y0$e$a;->c:Lu6/x;

    .line 10
    iget-boolean v0, p1, Ln3/y0$e;->d:Z

    iput-boolean v0, p0, Ln3/y0$e$a;->d:Z

    .line 11
    iget-boolean v0, p1, Ln3/y0$e;->e:Z

    iput-boolean v0, p0, Ln3/y0$e$a;->e:Z

    .line 12
    iget-boolean v0, p1, Ln3/y0$e;->f:Z

    iput-boolean v0, p0, Ln3/y0$e$a;->f:Z

    .line 13
    iget-object v0, p1, Ln3/y0$e;->g:Lu6/v;

    iput-object v0, p0, Ln3/y0$e$a;->g:Lu6/v;

    .line 14
    iget-object p1, p1, Ln3/y0$e;->h:[B

    .line 15
    iput-object p1, p0, Ln3/y0$e$a;->h:[B

    return-void
.end method
