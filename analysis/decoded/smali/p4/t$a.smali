.class public final Lp4/t$a;
.super Lp4/p;
.source "MaskingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp4/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final l:Ljava/lang/Object;


# instance fields
.field public final j:Ljava/lang/Object;

.field public final k:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lp4/t$a;->l:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ln3/b2;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lp4/p;-><init>(Ln3/b2;)V

    .line 2
    iput-object p2, p0, Lp4/t$a;->j:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lp4/t$a;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lp4/p;->i:Ln3/b2;

    .line 2
    sget-object v1, Lp4/t$a;->l:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lp4/t$a;->k:Ljava/lang/Object;

    if-eqz v1, :cond_0

    move-object p1, v1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final i(ILn3/b2$b;Z)Ln3/b2$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/p;->i:Ln3/b2;

    invoke-virtual {v0, p1, p2, p3}, Ln3/b2;->i(ILn3/b2$b;Z)Ln3/b2$b;

    .line 2
    iget-object p1, p2, Ln3/b2$b;->i:Ljava/lang/Object;

    iget-object v0, p0, Lp4/t$a;->k:Ljava/lang/Object;

    invoke-static {p1, v0}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 3
    sget-object p1, Lp4/t$a;->l:Ljava/lang/Object;

    iput-object p1, p2, Ln3/b2$b;->i:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final o(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/p;->i:Ln3/b2;

    invoke-virtual {v0, p1}, Ln3/b2;->o(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lp4/t$a;->k:Ljava/lang/Object;

    invoke-static {p1, v0}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lp4/t$a;->l:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final q(ILn3/b2$d;J)Ln3/b2$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/p;->i:Ln3/b2;

    invoke-virtual {v0, p1, p2, p3, p4}, Ln3/b2;->q(ILn3/b2$d;J)Ln3/b2$d;

    .line 2
    iget-object p1, p2, Ln3/b2$d;->h:Ljava/lang/Object;

    iget-object p3, p0, Lp4/t$a;->j:Ljava/lang/Object;

    invoke-static {p1, p3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Ln3/b2$d;->y:Ljava/lang/Object;

    iput-object p1, p2, Ln3/b2$d;->h:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final u(Ln3/b2;)Lp4/t$a;
    .locals 3

    new-instance v0, Lp4/t$a;

    iget-object v1, p0, Lp4/t$a;->j:Ljava/lang/Object;

    iget-object v2, p0, Lp4/t$a;->k:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2}, Lp4/t$a;-><init>(Ln3/b2;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
