.class public final Ln3/o1$a$a;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/o1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lm5/j$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lm5/j$a;

    invoke-direct {v0}, Lm5/j$a;-><init>()V

    iput-object v0, p0, Ln3/o1$a$a;->a:Lm5/j$a;

    return-void
.end method


# virtual methods
.method public final a(Ln3/o1$a;)Ln3/o1$a$a;
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/o1$a$a;->a:Lm5/j$a;

    .line 2
    iget-object p1, p1, Ln3/o1$a;->h:Lm5/j;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lm5/j;->c()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Lm5/j;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lm5/j$a;->a(I)Lm5/j$a;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final b(IZ)Ln3/o1$a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/o1$a$a;->a:Lm5/j$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lm5/j$a;->a(I)Lm5/j$a;

    :cond_0
    return-object p0
.end method

.method public final c()Ln3/o1$a;
    .locals 2

    new-instance v0, Ln3/o1$a;

    iget-object v1, p0, Ln3/o1$a$a;->a:Lm5/j$a;

    invoke-virtual {v1}, Lm5/j$a;->b()Lm5/j;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/o1$a;-><init>(Lm5/j;)V

    return-object v0
.end method
