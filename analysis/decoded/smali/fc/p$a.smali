.class public final Lfc/p$a;
.super Lm7/w$a;
.source "sessions.java"

# interfaces
.implements Lm7/q0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfc/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/w$a<",
        "Lfc/p;",
        "Lfc/p$a;",
        ">;",
        "Lm7/q0;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lfc/p;->x()Lfc/p;

    move-result-object v0

    invoke-direct {p0, v0}, Lm7/w$a;-><init>(Lm7/w;)V

    return-void
.end method
