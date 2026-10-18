.class public final Lf2/m;
.super Ljava/lang/Object;
.source "ShapeFill.java"

# interfaces
.implements Lf2/b;


# instance fields
.field public final a:Z

.field public final b:Landroid/graphics/Path$FillType;

.field public final c:Ljava/lang/String;

.field public final d:Le2/a;

.field public final e:Le2/d;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Le2/a;Le2/d;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf2/m;->c:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lf2/m;->a:Z

    .line 4
    iput-object p3, p0, Lf2/m;->b:Landroid/graphics/Path$FillType;

    .line 5
    iput-object p4, p0, Lf2/m;->d:Le2/a;

    .line 6
    iput-object p5, p0, Lf2/m;->e:Le2/d;

    .line 7
    iput-boolean p6, p0, Lf2/m;->f:Z

    return-void
.end method


# virtual methods
.method public final a(Ly1/e0;Lg2/b;)La2/b;
    .locals 1

    new-instance v0, La2/f;

    invoke-direct {v0, p1, p2, p0}, La2/f;-><init>(Ly1/e0;Lg2/b;Lf2/m;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ShapeFill{color=, fillEnabled="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lf2/m;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
