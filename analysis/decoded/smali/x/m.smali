.class public final Lx/m;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field public final a:Landroid/os/Bundle;

.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public final c:[Lx/u;

.field public final d:[Lx/u;

.field public e:Z

.field public f:Z

.field public final g:I

.field public final h:Z

.field public i:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public j:Ljava/lang/CharSequence;

.field public k:Landroid/app/PendingIntent;

.field public l:Z


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 5

    const-string v0, ""

    const v1, 0x7f080184

    .line 1
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->b(Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Lx/m;->f:Z

    .line 5
    iput-object v0, p0, Lx/m;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 6
    iget v3, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 7
    iget-object v3, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    invoke-static {v3}, Landroidx/core/graphics/drawable/IconCompat$a;->c(Ljava/lang/Object;)I

    move-result v3

    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 8
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->c()I

    move-result v0

    iput v0, p0, Lx/m;->i:I

    .line 9
    :cond_1
    invoke-static {p1}, Lx/o;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lx/m;->j:Ljava/lang/CharSequence;

    .line 10
    iput-object p2, p0, Lx/m;->k:Landroid/app/PendingIntent;

    .line 11
    iput-object v1, p0, Lx/m;->a:Landroid/os/Bundle;

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lx/m;->c:[Lx/u;

    .line 13
    iput-object p1, p0, Lx/m;->d:[Lx/u;

    .line 14
    iput-boolean v2, p0, Lx/m;->e:Z

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lx/m;->g:I

    .line 16
    iput-boolean v2, p0, Lx/m;->f:Z

    .line 17
    iput-boolean p1, p0, Lx/m;->h:Z

    .line 18
    iput-boolean p1, p0, Lx/m;->l:Z

    return-void
.end method


# virtual methods
.method public final a()Landroidx/core/graphics/drawable/IconCompat;
    .locals 2

    .line 1
    iget-object v0, p0, Lx/m;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_0

    iget v0, p0, Lx/m;->i:I

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Landroidx/core/graphics/drawable/IconCompat;->b(Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p0, Lx/m;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 3
    :cond_0
    iget-object v0, p0, Lx/m;->b:Landroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method
