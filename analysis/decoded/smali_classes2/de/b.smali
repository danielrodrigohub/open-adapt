.class public final Lde/b;
.super Ljava/lang/Object;
.source "Okio.kt"

# interfaces
.implements Lde/h0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final timeout()Lde/k0;
    .locals 1

    sget-object v0, Lde/k0;->NONE:Lde/k0;

    return-object v0
.end method

.method public final write(Lde/c;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lde/c;->a(J)V

    return-void
.end method
