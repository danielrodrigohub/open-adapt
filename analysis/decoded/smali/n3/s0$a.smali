.class public final Ln3/s0$a;
.super Ljava/lang/Object;
.source "Format.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Lf4/a;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public n:Lr3/d;

.field public o:J

.field public p:I

.field public q:I

.field public r:F

.field public s:I

.field public t:F

.field public u:[B

.field public v:I

.field public w:Ln5/b;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ln3/s0$a;->f:I

    .line 3
    iput v0, p0, Ln3/s0$a;->g:I

    .line 4
    iput v0, p0, Ln3/s0$a;->l:I

    const-wide v1, 0x7fffffffffffffffL

    .line 5
    iput-wide v1, p0, Ln3/s0$a;->o:J

    .line 6
    iput v0, p0, Ln3/s0$a;->p:I

    .line 7
    iput v0, p0, Ln3/s0$a;->q:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 8
    iput v1, p0, Ln3/s0$a;->r:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    iput v1, p0, Ln3/s0$a;->t:F

    .line 10
    iput v0, p0, Ln3/s0$a;->v:I

    .line 11
    iput v0, p0, Ln3/s0$a;->x:I

    .line 12
    iput v0, p0, Ln3/s0$a;->y:I

    .line 13
    iput v0, p0, Ln3/s0$a;->z:I

    .line 14
    iput v0, p0, Ln3/s0$a;->C:I

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Ln3/s0$a;->D:I

    return-void
.end method

.method public constructor <init>(Ln3/s0;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget-object v0, p1, Ln3/s0;->h:Ljava/lang/String;

    iput-object v0, p0, Ln3/s0$a;->a:Ljava/lang/String;

    .line 18
    iget-object v0, p1, Ln3/s0;->i:Ljava/lang/String;

    iput-object v0, p0, Ln3/s0$a;->b:Ljava/lang/String;

    .line 19
    iget-object v0, p1, Ln3/s0;->j:Ljava/lang/String;

    iput-object v0, p0, Ln3/s0$a;->c:Ljava/lang/String;

    .line 20
    iget v0, p1, Ln3/s0;->k:I

    iput v0, p0, Ln3/s0$a;->d:I

    .line 21
    iget v0, p1, Ln3/s0;->l:I

    iput v0, p0, Ln3/s0$a;->e:I

    .line 22
    iget v0, p1, Ln3/s0;->m:I

    iput v0, p0, Ln3/s0$a;->f:I

    .line 23
    iget v0, p1, Ln3/s0;->n:I

    iput v0, p0, Ln3/s0$a;->g:I

    .line 24
    iget-object v0, p1, Ln3/s0;->p:Ljava/lang/String;

    iput-object v0, p0, Ln3/s0$a;->h:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Ln3/s0;->q:Lf4/a;

    iput-object v0, p0, Ln3/s0$a;->i:Lf4/a;

    .line 26
    iget-object v0, p1, Ln3/s0;->r:Ljava/lang/String;

    iput-object v0, p0, Ln3/s0$a;->j:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Ln3/s0;->s:Ljava/lang/String;

    iput-object v0, p0, Ln3/s0$a;->k:Ljava/lang/String;

    .line 28
    iget v0, p1, Ln3/s0;->t:I

    iput v0, p0, Ln3/s0$a;->l:I

    .line 29
    iget-object v0, p1, Ln3/s0;->u:Ljava/util/List;

    iput-object v0, p0, Ln3/s0$a;->m:Ljava/util/List;

    .line 30
    iget-object v0, p1, Ln3/s0;->v:Lr3/d;

    iput-object v0, p0, Ln3/s0$a;->n:Lr3/d;

    .line 31
    iget-wide v0, p1, Ln3/s0;->w:J

    iput-wide v0, p0, Ln3/s0$a;->o:J

    .line 32
    iget v0, p1, Ln3/s0;->x:I

    iput v0, p0, Ln3/s0$a;->p:I

    .line 33
    iget v0, p1, Ln3/s0;->y:I

    iput v0, p0, Ln3/s0$a;->q:I

    .line 34
    iget v0, p1, Ln3/s0;->z:F

    iput v0, p0, Ln3/s0$a;->r:F

    .line 35
    iget v0, p1, Ln3/s0;->A:I

    iput v0, p0, Ln3/s0$a;->s:I

    .line 36
    iget v0, p1, Ln3/s0;->B:F

    iput v0, p0, Ln3/s0$a;->t:F

    .line 37
    iget-object v0, p1, Ln3/s0;->C:[B

    iput-object v0, p0, Ln3/s0$a;->u:[B

    .line 38
    iget v0, p1, Ln3/s0;->D:I

    iput v0, p0, Ln3/s0$a;->v:I

    .line 39
    iget-object v0, p1, Ln3/s0;->E:Ln5/b;

    iput-object v0, p0, Ln3/s0$a;->w:Ln5/b;

    .line 40
    iget v0, p1, Ln3/s0;->F:I

    iput v0, p0, Ln3/s0$a;->x:I

    .line 41
    iget v0, p1, Ln3/s0;->G:I

    iput v0, p0, Ln3/s0$a;->y:I

    .line 42
    iget v0, p1, Ln3/s0;->H:I

    iput v0, p0, Ln3/s0$a;->z:I

    .line 43
    iget v0, p1, Ln3/s0;->I:I

    iput v0, p0, Ln3/s0$a;->A:I

    .line 44
    iget v0, p1, Ln3/s0;->J:I

    iput v0, p0, Ln3/s0$a;->B:I

    .line 45
    iget v0, p1, Ln3/s0;->K:I

    iput v0, p0, Ln3/s0$a;->C:I

    .line 46
    iget p1, p1, Ln3/s0;->L:I

    iput p1, p0, Ln3/s0$a;->D:I

    return-void
.end method


# virtual methods
.method public final a()Ln3/s0;
    .locals 1

    new-instance v0, Ln3/s0;

    invoke-direct {v0, p0}, Ln3/s0;-><init>(Ln3/s0$a;)V

    return-object v0
.end method

.method public final b(I)Ln3/s0$a;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ln3/s0$a;->a:Ljava/lang/String;

    return-object p0
.end method
