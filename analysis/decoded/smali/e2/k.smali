.class public final Le2/k;
.super Ljava/lang/Object;
.source "AnimatableTransform.java"

# interfaces
.implements Lf2/b;


# instance fields
.field public final a:Le2/e;

.field public final b:Le2/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le2/l<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le2/g;

.field public final d:Le2/b;

.field public final e:Le2/d;

.field public final f:Le2/b;

.field public final g:Le2/b;

.field public final h:Le2/b;

.field public final i:Le2/b;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v9}, Le2/k;-><init>(Le2/e;Le2/l;Le2/g;Le2/b;Le2/d;Le2/b;Le2/b;Le2/b;Le2/b;)V

    return-void
.end method

.method public constructor <init>(Le2/e;Le2/l;Le2/g;Le2/b;Le2/d;Le2/b;Le2/b;Le2/b;Le2/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le2/e;",
            "Le2/l<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Le2/g;",
            "Le2/b;",
            "Le2/d;",
            "Le2/b;",
            "Le2/b;",
            "Le2/b;",
            "Le2/b;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Le2/k;->a:Le2/e;

    .line 4
    iput-object p2, p0, Le2/k;->b:Le2/l;

    .line 5
    iput-object p3, p0, Le2/k;->c:Le2/g;

    .line 6
    iput-object p4, p0, Le2/k;->d:Le2/b;

    .line 7
    iput-object p5, p0, Le2/k;->e:Le2/d;

    .line 8
    iput-object p6, p0, Le2/k;->h:Le2/b;

    .line 9
    iput-object p7, p0, Le2/k;->i:Le2/b;

    .line 10
    iput-object p8, p0, Le2/k;->f:Le2/b;

    .line 11
    iput-object p9, p0, Le2/k;->g:Le2/b;

    return-void
.end method


# virtual methods
.method public final a(Ly1/e0;Lg2/b;)La2/b;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
