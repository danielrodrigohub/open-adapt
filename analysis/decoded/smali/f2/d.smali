.class public final Lf2/d;
.super Ljava/lang/Object;
.source "GradientFill.java"

# interfaces
.implements Lf2/b;


# instance fields
.field public final a:I

.field public final b:Landroid/graphics/Path$FillType;

.field public final c:Le2/c;

.field public final d:Le2/d;

.field public final e:Le2/f;

.field public final f:Le2/f;

.field public final g:Ljava/lang/String;

.field public final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/graphics/Path$FillType;Le2/c;Le2/d;Le2/f;Le2/f;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lf2/d;->a:I

    .line 3
    iput-object p3, p0, Lf2/d;->b:Landroid/graphics/Path$FillType;

    .line 4
    iput-object p4, p0, Lf2/d;->c:Le2/c;

    .line 5
    iput-object p5, p0, Lf2/d;->d:Le2/d;

    .line 6
    iput-object p6, p0, Lf2/d;->e:Le2/f;

    .line 7
    iput-object p7, p0, Lf2/d;->f:Le2/f;

    .line 8
    iput-object p1, p0, Lf2/d;->g:Ljava/lang/String;

    .line 9
    iput-boolean p8, p0, Lf2/d;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Ly1/e0;Lg2/b;)La2/b;
    .locals 1

    new-instance v0, La2/g;

    invoke-direct {v0, p1, p2, p0}, La2/g;-><init>(Ly1/e0;Lg2/b;Lf2/d;)V

    return-object v0
.end method
