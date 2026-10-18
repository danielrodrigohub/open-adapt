.class public abstract Lb7/x$c;
.super Lb7/x;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lb7/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb7/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lb7/x$c<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lb7/x<",
        "TMessageType;TBuilderType;>;",
        "Lb7/r0;"
    }
.end annotation


# instance fields
.field public extensions:Lb7/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb7/t<",
            "Lb7/x$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb7/x;-><init>()V

    .line 2
    sget-object v0, Lb7/t;->d:Lb7/t;

    .line 3
    iput-object v0, p0, Lb7/x$c;->extensions:Lb7/t;

    return-void
.end method


# virtual methods
.method public final x()Lb7/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb7/t<",
            "Lb7/x$d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb7/x$c;->extensions:Lb7/t;

    .line 2
    iget-boolean v1, v0, Lb7/t;->b:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lb7/t;->a()Lb7/t;

    move-result-object v0

    iput-object v0, p0, Lb7/x$c;->extensions:Lb7/t;

    .line 4
    :cond_0
    iget-object v0, p0, Lb7/x$c;->extensions:Lb7/t;

    return-object v0
.end method
