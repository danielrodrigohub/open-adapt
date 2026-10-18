.class public final Ln3/k0$d;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Ln3/f1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ln3/b2;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ln3/b2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/k0$d;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Ln3/k0$d;->b:Ln3/b2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ln3/k0$d;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Ln3/b2;
    .locals 1

    iget-object v0, p0, Ln3/k0$d;->b:Ln3/b2;

    return-object v0
.end method
