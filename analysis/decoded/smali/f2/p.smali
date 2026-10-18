.class public final Lf2/p;
.super Ljava/lang/Object;
.source "ShapeStroke.java"

# interfaces
.implements Lf2/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le2/b;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le2/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le2/a;

.field public final e:Le2/d;

.field public final f:Le2/b;

.field public final g:I

.field public final h:I

.field public final i:F

.field public final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Le2/b;Ljava/util/List;Le2/a;Le2/d;Le2/b;IIFZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le2/b;",
            "Ljava/util/List<",
            "Le2/b;",
            ">;",
            "Le2/a;",
            "Le2/d;",
            "Le2/b;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "FZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf2/p;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lf2/p;->b:Le2/b;

    .line 4
    iput-object p3, p0, Lf2/p;->c:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lf2/p;->d:Le2/a;

    .line 6
    iput-object p5, p0, Lf2/p;->e:Le2/d;

    .line 7
    iput-object p6, p0, Lf2/p;->f:Le2/b;

    .line 8
    iput p7, p0, Lf2/p;->g:I

    .line 9
    iput p8, p0, Lf2/p;->h:I

    .line 10
    iput p9, p0, Lf2/p;->i:F

    .line 11
    iput-boolean p10, p0, Lf2/p;->j:Z

    return-void
.end method


# virtual methods
.method public final a(Ly1/e0;Lg2/b;)La2/b;
    .locals 1

    new-instance v0, La2/s;

    invoke-direct {v0, p1, p2, p0}, La2/s;-><init>(Ly1/e0;Lg2/b;Lf2/p;)V

    return-object v0
.end method
