.class public final Ll5/d0$f;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll5/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public final h:Ll5/d0$e;


# direct methods
.method public constructor <init>(Ll5/d0$e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll5/d0$f;->h:Ll5/d0$e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ll5/d0$f;->h:Ll5/d0$e;

    invoke-interface {v0}, Ll5/d0$e;->i()V

    return-void
.end method
