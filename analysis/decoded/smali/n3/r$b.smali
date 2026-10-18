.class public final Ln3/r$b;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lm5/a0;

.field public c:Lt6/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt6/o<",
            "Ln3/v1;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lt6/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt6/o<",
            "Lp4/x$a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lt6/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt6/o<",
            "Lj5/s;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lt6/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt6/o<",
            "Ll5/e;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroid/os/Looper;

.field public h:Lp3/d;

.field public i:I

.field public j:Z

.field public k:Ln3/w1;

.field public l:J

.field public m:J

.field public n:Ln3/j;

.field public o:J

.field public p:J

.field public q:Z

.field public r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    new-instance v0, Ln3/s;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ln3/s;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Ln3/u;

    invoke-direct {v1, p1}, Ln3/u;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v2, Ln3/t;

    invoke-direct {v2, p1}, Ln3/t;-><init>(Landroid/content/Context;)V

    new-instance v3, Ln3/v;

    invoke-direct {v3, p1}, Ln3/v;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Ln3/r$b;->a:Landroid/content/Context;

    .line 5
    iput-object v0, p0, Ln3/r$b;->c:Lt6/o;

    .line 6
    iput-object v1, p0, Ln3/r$b;->d:Lt6/o;

    .line 7
    iput-object v2, p0, Ln3/r$b;->e:Lt6/o;

    .line 8
    iput-object v3, p0, Ln3/r$b;->f:Lt6/o;

    .line 9
    invoke-static {}, Lm5/g0;->t()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Ln3/r$b;->g:Landroid/os/Looper;

    .line 10
    sget-object p1, Lp3/d;->n:Lp3/d;

    iput-object p1, p0, Ln3/r$b;->h:Lp3/d;

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Ln3/r$b;->i:I

    .line 12
    iput-boolean p1, p0, Ln3/r$b;->j:Z

    .line 13
    sget-object v0, Ln3/w1;->c:Ln3/w1;

    iput-object v0, p0, Ln3/r$b;->k:Ln3/w1;

    const-wide/16 v0, 0x1388

    .line 14
    iput-wide v0, p0, Ln3/r$b;->l:J

    const-wide/16 v0, 0x3a98

    .line 15
    iput-wide v0, p0, Ln3/r$b;->m:J

    const-wide/16 v0, 0x14

    .line 16
    invoke-static {v0, v1}, Lm5/g0;->L(J)J

    move-result-wide v3

    const-wide/16 v0, 0x1f4

    .line 17
    invoke-static {v0, v1}, Lm5/g0;->L(J)J

    move-result-wide v5

    .line 18
    new-instance v8, Ln3/j;

    const v7, 0x3f7fbe77

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Ln3/j;-><init>(JJF)V

    .line 19
    iput-object v8, p0, Ln3/r$b;->n:Ln3/j;

    .line 20
    sget-object v2, Lm5/c;->a:Lm5/a0;

    iput-object v2, p0, Ln3/r$b;->b:Lm5/a0;

    .line 21
    iput-wide v0, p0, Ln3/r$b;->o:J

    const-wide/16 v0, 0x7d0

    .line 22
    iput-wide v0, p0, Ln3/r$b;->p:J

    .line 23
    iput-boolean p1, p0, Ln3/r$b;->q:Z

    return-void
.end method


# virtual methods
.method public final a()Ln3/r;
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/r$b;->r:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iput-boolean v1, p0, Ln3/r$b;->r:Z

    .line 3
    new-instance v0, Ln3/k0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ln3/k0;-><init>(Ln3/r$b;Ln3/o1;)V

    return-object v0
.end method
