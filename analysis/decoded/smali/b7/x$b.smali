.class public final Lb7/x$b;
.super Lb7/b;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb7/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lb7/x<",
        "TT;*>;>",
        "Lb7/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lb7/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb7/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lb7/b;-><init>()V

    .line 2
    iput-object p1, p0, Lb7/x$b;->a:Lb7/x;

    return-void
.end method
