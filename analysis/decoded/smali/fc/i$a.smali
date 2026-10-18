.class public final Lfc/i$a;
.super Lm7/w$a;
.source "sessions.java"

# interfaces
.implements Lm7/q0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfc/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/w$a<",
        "Lfc/i;",
        "Lfc/i$a;",
        ">;",
        "Lm7/q0;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lfc/i;->A()Lfc/i;

    move-result-object v0

    invoke-direct {p0, v0}, Lm7/w$a;-><init>(Lm7/w;)V

    return-void
.end method


# virtual methods
.method public final m(I)Lfc/i$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm7/w$a;->k()V

    .line 2
    iget-object v0, p0, Lm7/w$a;->i:Lm7/w;

    check-cast v0, Lfc/i;

    invoke-static {v0, p1}, Lfc/i;->x(Lfc/i;I)V

    return-object p0
.end method

.method public final n(I)Lfc/i$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm7/w$a;->k()V

    .line 2
    iget-object v0, p0, Lm7/w$a;->i:Lm7/w;

    check-cast v0, Lfc/i;

    invoke-static {v0, p1}, Lfc/i;->y(Lfc/i;I)V

    return-object p0
.end method

.method public final o(I)Lfc/i$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm7/w$a;->k()V

    .line 2
    iget-object v0, p0, Lm7/w$a;->i:Lm7/w;

    check-cast v0, Lfc/i;

    invoke-static {v0, p1}, Lfc/i;->z(Lfc/i;I)V

    return-object p0
.end method
