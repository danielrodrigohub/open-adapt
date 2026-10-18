.class public final synthetic Ln3/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Ln3/d$a;

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Ln3/d$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/c;->h:Ln3/d$a;

    iput p2, p0, Ln3/c;->i:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ln3/c;->h:Ln3/d$a;

    iget v1, p0, Ln3/c;->i:I

    .line 1
    iget-object v0, v0, Ln3/d$a;->b:Ln3/d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, -0x3

    const/4 v3, -0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eq v1, v4, :cond_0

    const-string v0, "Unknown focus change type: "

    const-string v2, "AudioFocusManager"

    .line 3
    invoke-static {v0, v1, v2}, Lda/c;->b(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {v0, v4}, Ln3/d;->d(I)V

    .line 5
    invoke-virtual {v0, v4}, Ln3/d;->b(I)V

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {v0, v2}, Ln3/d;->b(I)V

    .line 7
    invoke-virtual {v0}, Ln3/d;->a()V

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    if-eq v1, v3, :cond_5

    .line 8
    iget-object v1, v0, Ln3/d;->d:Lp3/d;

    if-eqz v1, :cond_3

    iget v1, v1, Lp3/d;->h:I

    if-ne v1, v4, :cond_3

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x3

    .line 9
    invoke-virtual {v0, v1}, Ln3/d;->d(I)V

    goto :goto_2

    .line 10
    :cond_5
    :goto_1
    invoke-virtual {v0, v2}, Ln3/d;->b(I)V

    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Ln3/d;->d(I)V

    :goto_2
    return-void
.end method
