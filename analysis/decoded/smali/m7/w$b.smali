.class public final Lm7/w$b;
.super Lm7/b;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lm7/w<",
        "TT;*>;>",
        "Lm7/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lm7/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm7/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm7/b;-><init>()V

    .line 2
    iput-object p1, p0, Lm7/w$b;->a:Lm7/w;

    return-void
.end method
