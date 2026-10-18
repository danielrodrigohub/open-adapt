.class public abstract Lya/d$b;
.super Lya/h0;
.source "AdaptKitControlsRepositories.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lya/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Response:",
        "Ljava/lang/Object;",
        ">",
        "Lya/h0<",
        "TResponse;>;"
    }
.end annotation


# instance fields
.field public final synthetic l:Lya/d;


# direct methods
.method public constructor <init>(Lya/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lya/d$b;->l:Lya/d;

    .line 2
    invoke-direct {p0}, Lya/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public m(Ljava/lang/Throwable;)Z
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lya/d$b;->l:Lya/d;

    invoke-virtual {v0, p1}, Lya/d;->h0(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
