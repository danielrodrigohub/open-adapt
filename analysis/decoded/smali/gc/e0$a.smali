.class public final Lgc/e0$a;
.super Lm7/w$a;
.source "messages.java"

# interfaces
.implements Lm7/q0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgc/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/w$a<",
        "Lgc/e0;",
        "Lgc/e0$a;",
        ">;",
        "Lm7/q0;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lgc/e0;->y()Lgc/e0;

    move-result-object v0

    invoke-direct {p0, v0}, Lm7/w$a;-><init>(Lm7/w;)V

    return-void
.end method
