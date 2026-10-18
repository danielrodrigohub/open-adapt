.class public final Lc4/m$a;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc4/m$a$a;
    }
.end annotation


# instance fields
.field public final a:Ls3/w;

.field public final b:Z

.field public final c:Z

.field public final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lm5/t$c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lm5/t$b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lm5/x;

.field public g:[B

.field public h:I

.field public i:I

.field public j:J

.field public k:Z

.field public l:J

.field public m:Lc4/m$a$a;

.field public n:Lc4/m$a$a;

.field public o:Z

.field public p:J

.field public q:J

.field public r:Z


# direct methods
.method public constructor <init>(Ls3/w;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc4/m$a;->a:Ls3/w;

    .line 3
    iput-boolean p2, p0, Lc4/m$a;->b:Z

    .line 4
    iput-boolean p3, p0, Lc4/m$a;->c:Z

    .line 5
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lc4/m$a;->d:Landroid/util/SparseArray;

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lc4/m$a;->e:Landroid/util/SparseArray;

    .line 7
    new-instance p1, Lc4/m$a$a;

    invoke-direct {p1}, Lc4/m$a$a;-><init>()V

    iput-object p1, p0, Lc4/m$a;->m:Lc4/m$a$a;

    .line 8
    new-instance p1, Lc4/m$a$a;

    invoke-direct {p1}, Lc4/m$a$a;-><init>()V

    iput-object p1, p0, Lc4/m$a;->n:Lc4/m$a$a;

    const/16 p1, 0x80

    new-array p1, p1, [B

    .line 9
    iput-object p1, p0, Lc4/m$a;->g:[B

    .line 10
    new-instance p2, Lm5/x;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Lm5/x;-><init>([BII)V

    iput-object p2, p0, Lc4/m$a;->f:Lm5/x;

    .line 11
    iput-boolean p3, p0, Lc4/m$a;->k:Z

    .line 12
    iput-boolean p3, p0, Lc4/m$a;->o:Z

    .line 13
    iget-object p1, p0, Lc4/m$a;->n:Lc4/m$a$a;

    .line 14
    iput-boolean p3, p1, Lc4/m$a$a;->b:Z

    .line 15
    iput-boolean p3, p1, Lc4/m$a$a;->a:Z

    return-void
.end method
