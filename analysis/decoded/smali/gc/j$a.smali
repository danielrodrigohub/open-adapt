.class public final Lgc/j$a;
.super Lm7/w$a;
.source "messages.java"

# interfaces
.implements Lm7/q0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgc/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/w$a<",
        "Lgc/j;",
        "Lgc/j$a;",
        ">;",
        "Lm7/q0;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lgc/j;->y()Lgc/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lm7/w$a;-><init>(Lm7/w;)V

    return-void
.end method


# virtual methods
.method public final m(Ljava/lang/String;)Lgc/j$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm7/w$a;->k()V

    .line 2
    iget-object v0, p0, Lm7/w$a;->i:Lm7/w;

    check-cast v0, Lgc/j;

    invoke-static {v0, p1}, Lgc/j;->x(Lgc/j;Ljava/lang/String;)V

    return-object p0
.end method
