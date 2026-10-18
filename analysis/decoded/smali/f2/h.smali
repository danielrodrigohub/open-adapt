.class public final Lf2/h;
.super Ljava/lang/Object;
.source "PolystarShape.java"

# interfaces
.implements Lf2/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Le2/b;

.field public final d:Le2/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le2/l<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le2/b;

.field public final f:Le2/b;

.field public final g:Le2/b;

.field public final h:Le2/b;

.field public final i:Le2/b;

.field public final j:Z

.field public final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILe2/b;Le2/l;Le2/b;Le2/b;Le2/b;Le2/b;Le2/b;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Le2/b;",
            "Le2/l<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Le2/b;",
            "Le2/b;",
            "Le2/b;",
            "Le2/b;",
            "Le2/b;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf2/h;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lf2/h;->b:I

    .line 4
    iput-object p3, p0, Lf2/h;->c:Le2/b;

    .line 5
    iput-object p4, p0, Lf2/h;->d:Le2/l;

    .line 6
    iput-object p5, p0, Lf2/h;->e:Le2/b;

    .line 7
    iput-object p6, p0, Lf2/h;->f:Le2/b;

    .line 8
    iput-object p7, p0, Lf2/h;->g:Le2/b;

    .line 9
    iput-object p8, p0, Lf2/h;->h:Le2/b;

    .line 10
    iput-object p9, p0, Lf2/h;->i:Le2/b;

    .line 11
    iput-boolean p10, p0, Lf2/h;->j:Z

    .line 12
    iput-boolean p11, p0, Lf2/h;->k:Z

    return-void
.end method


# virtual methods
.method public final a(Ly1/e0;Lg2/b;)La2/b;
    .locals 1

    new-instance v0, La2/m;

    invoke-direct {v0, p1, p2, p0}, La2/m;-><init>(Ly1/e0;Lg2/b;Lf2/h;)V

    return-object v0
.end method
