.class public final Lf2/e;
.super Ljava/lang/Object;
.source "GradientStroke.java"

# interfaces
.implements Lf2/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Le2/c;

.field public final d:Le2/d;

.field public final e:Le2/f;

.field public final f:Le2/f;

.field public final g:Le2/b;

.field public final h:I

.field public final i:I

.field public final j:F

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le2/b;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Le2/b;

.field public final m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILe2/c;Le2/d;Le2/f;Le2/f;Le2/b;IIFLjava/util/List;Le2/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Le2/c;",
            "Le2/d;",
            "Le2/f;",
            "Le2/f;",
            "Le2/b;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "F",
            "Ljava/util/List<",
            "Le2/b;",
            ">;",
            "Le2/b;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf2/e;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lf2/e;->b:I

    .line 4
    iput-object p3, p0, Lf2/e;->c:Le2/c;

    .line 5
    iput-object p4, p0, Lf2/e;->d:Le2/d;

    .line 6
    iput-object p5, p0, Lf2/e;->e:Le2/f;

    .line 7
    iput-object p6, p0, Lf2/e;->f:Le2/f;

    .line 8
    iput-object p7, p0, Lf2/e;->g:Le2/b;

    .line 9
    iput p8, p0, Lf2/e;->h:I

    .line 10
    iput p9, p0, Lf2/e;->i:I

    .line 11
    iput p10, p0, Lf2/e;->j:F

    .line 12
    iput-object p11, p0, Lf2/e;->k:Ljava/util/List;

    .line 13
    iput-object p12, p0, Lf2/e;->l:Le2/b;

    .line 14
    iput-boolean p13, p0, Lf2/e;->m:Z

    return-void
.end method


# virtual methods
.method public final a(Ly1/e0;Lg2/b;)La2/b;
    .locals 1

    new-instance v0, La2/h;

    invoke-direct {v0, p1, p2, p0}, La2/h;-><init>(Ly1/e0;Lg2/b;Lf2/e;)V

    return-object v0
.end method
