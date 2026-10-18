.class public final Lx/t;
.super Ljava/lang/Object;
.source "Person.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/t$a;,
        Lx/t$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Lx/t$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lx/t$b;->a:Ljava/lang/CharSequence;

    iput-object v0, p0, Lx/t;->a:Ljava/lang/CharSequence;

    .line 3
    iget-object v0, p1, Lx/t$b;->b:Landroidx/core/graphics/drawable/IconCompat;

    iput-object v0, p0, Lx/t;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 4
    iget-object v0, p1, Lx/t$b;->c:Ljava/lang/String;

    iput-object v0, p0, Lx/t;->c:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lx/t$b;->d:Ljava/lang/String;

    iput-object v0, p0, Lx/t;->d:Ljava/lang/String;

    .line 6
    iget-boolean v0, p1, Lx/t$b;->e:Z

    iput-boolean v0, p0, Lx/t;->e:Z

    .line 7
    iget-boolean p1, p1, Lx/t$b;->f:Z

    iput-boolean p1, p0, Lx/t;->f:Z

    return-void
.end method
