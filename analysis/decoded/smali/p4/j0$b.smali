.class public final Lp4/j0$b;
.super Ljava/lang/Object;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Lp4/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp4/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ll5/j$a;

.field public b:Lp4/h0$a;

.field public c:Lr3/m;

.field public d:Ll5/c0;

.field public e:I


# direct methods
.method public constructor <init>(Ll5/j$a;Ls3/l;)V
    .locals 2

    .line 1
    new-instance v0, Ln3/z;

    const/4 v1, 0x4

    invoke-direct {v0, p2, v1}, Ln3/z;-><init>(Ljava/lang/Object;I)V

    .line 2
    new-instance p2, Lr3/c;

    invoke-direct {p2}, Lr3/c;-><init>()V

    new-instance v1, Ll5/u;

    invoke-direct {v1}, Ll5/u;-><init>()V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lp4/j0$b;->a:Ll5/j$a;

    .line 5
    iput-object v0, p0, Lp4/j0$b;->b:Lp4/h0$a;

    .line 6
    iput-object p2, p0, Lp4/j0$b;->c:Lr3/m;

    .line 7
    iput-object v1, p0, Lp4/j0$b;->d:Ll5/c0;

    const/high16 p1, 0x100000

    .line 8
    iput p1, p0, Lp4/j0$b;->e:I

    return-void
.end method


# virtual methods
.method public final a(Lr3/m;)Lp4/x$a;
    .locals 1

    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lm5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp4/j0$b;->c:Lr3/m;

    return-object p0
.end method

.method public final b(Ll5/c0;)Lp4/x$a;
    .locals 1

    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lm5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp4/j0$b;->d:Ll5/c0;

    return-object p0
.end method

.method public final bridge synthetic c(Ln3/y0;)Lp4/x;
    .locals 0

    invoke-virtual {p0, p1}, Lp4/j0$b;->d(Ln3/y0;)Lp4/j0;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ln3/y0;)Lp4/j0;
    .locals 8

    .line 1
    iget-object v0, p1, Ln3/y0;->i:Ln3/y0$h;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Ln3/y0;->i:Ln3/y0$h;

    iget-object v0, v0, Ln3/y0$g;->g:Ljava/lang/Object;

    .line 4
    new-instance v0, Lp4/j0;

    iget-object v3, p0, Lp4/j0$b;->a:Ll5/j$a;

    iget-object v4, p0, Lp4/j0$b;->b:Lp4/h0$a;

    iget-object v1, p0, Lp4/j0$b;->c:Lr3/m;

    .line 5
    invoke-interface {v1, p1}, Lr3/m;->a(Ln3/y0;)Lr3/l;

    move-result-object v5

    iget-object v6, p0, Lp4/j0$b;->d:Ll5/c0;

    iget v7, p0, Lp4/j0$b;->e:I

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lp4/j0;-><init>(Ln3/y0;Ll5/j$a;Lp4/h0$a;Lr3/l;Ll5/c0;I)V

    return-object v0
.end method
