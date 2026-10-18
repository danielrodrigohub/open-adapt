.class public final Lf2/a;
.super Ljava/lang/Object;
.source "CircleShape.java"

# interfaces
.implements Lf2/b;


# instance fields
.field public final a:Ljava/lang/String;

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

.field public final c:Le2/f;

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Le2/l;Le2/f;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le2/l<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Le2/f;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf2/a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lf2/a;->b:Le2/l;

    .line 4
    iput-object p3, p0, Lf2/a;->c:Le2/f;

    .line 5
    iput-boolean p4, p0, Lf2/a;->d:Z

    .line 6
    iput-boolean p5, p0, Lf2/a;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Ly1/e0;Lg2/b;)La2/b;
    .locals 1

    new-instance v0, La2/e;

    invoke-direct {v0, p1, p2, p0}, La2/e;-><init>(Ly1/e0;Lg2/b;Lf2/a;)V

    return-object v0
.end method
