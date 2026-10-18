.class public final synthetic Ly0/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln3/h$a;
.implements Lm5/f;


# static fields
.field public static final synthetic b:Ly0/f;

.field public static final synthetic c:Ly0/f;

.field public static final synthetic d:Ly0/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ly0/f;

    invoke-direct {v0}, Ly0/f;-><init>()V

    sput-object v0, Ly0/f;->b:Ly0/f;

    new-instance v0, Ly0/f;

    invoke-direct {v0}, Ly0/f;-><init>()V

    sput-object v0, Ly0/f;->c:Ly0/f;

    new-instance v0, Ly0/f;

    invoke-direct {v0}, Ly0/f;-><init>()V

    sput-object v0, Ly0/f;->d:Ly0/f;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lp4/l0$b;

    iget-object p1, p1, Lp4/l0$b;->b:Lr3/l$b;

    invoke-interface {p1}, Lr3/l$b;->a()V

    return-void
.end method

.method public final d(Landroid/os/Bundle;)Ln3/h;
    .locals 10

    sget-object v0, Ln3/y0$c;->m:Ly0/f;

    .line 1
    new-instance v0, Ln3/y0$c$a;

    invoke-direct {v0}, Ln3/y0$c$a;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ln3/y0$c;->b(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v2, v5, v3

    const/4 v7, 0x1

    if-ltz v2, :cond_0

    move v2, v7

    goto :goto_0

    :cond_0
    move v2, v1

    .line 3
    :goto_0
    invoke-static {v2}, Lm5/a;->a(Z)V

    .line 4
    iput-wide v5, v0, Ln3/y0$c$a;->a:J

    .line 5
    invoke-static {v7}, Ln3/y0$c;->b(I)Ljava/lang/String;

    move-result-object v2

    const-wide/high16 v5, -0x8000000000000000L

    .line 6
    invoke-virtual {p1, v2, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v2, v8, v5

    if-eqz v2, :cond_2

    cmp-long v2, v8, v3

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    move v7, v1

    .line 7
    :cond_2
    :goto_1
    invoke-static {v7}, Lm5/a;->a(Z)V

    .line 8
    iput-wide v8, v0, Ln3/y0$c$a;->b:J

    const/4 v2, 0x2

    .line 9
    invoke-static {v2}, Ln3/y0$c;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 10
    iput-boolean v2, v0, Ln3/y0$c$a;->c:Z

    const/4 v2, 0x3

    .line 11
    invoke-static {v2}, Ln3/y0$c;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 12
    iput-boolean v2, v0, Ln3/y0$c$a;->d:Z

    const/4 v2, 0x4

    .line 13
    invoke-static {v2}, Ln3/y0$c;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 14
    iput-boolean p1, v0, Ln3/y0$c$a;->e:Z

    .line 15
    invoke-virtual {v0}, Ln3/y0$c$a;->a()Ln3/y0$d;

    move-result-object p1

    return-object p1
.end method
