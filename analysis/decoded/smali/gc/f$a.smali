.class public final Lgc/f$a;
.super Lm7/w$a;
.source "firmware.java"

# interfaces
.implements Lm7/q0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgc/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/w$a<",
        "Lgc/f;",
        "Lgc/f$a;",
        ">;",
        "Lm7/q0;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lgc/f;->y()Lgc/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lm7/w$a;-><init>(Lm7/w;)V

    return-void
.end method


# virtual methods
.method public final m(I)Lgc/f$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm7/w$a;->k()V

    .line 2
    iget-object v0, p0, Lm7/w$a;->i:Lm7/w;

    check-cast v0, Lgc/f;

    invoke-static {v0, p1}, Lgc/f;->x(Lgc/f;I)V

    return-object p0
.end method
