.class public final Lg0/p$a;
.super Ljava/lang/Object;
.source "RequestExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg0/p;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h:Li0/a;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Li0/a;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lg0/p$a;->h:Li0/a;

    iput-object p2, p0, Lg0/p$a;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lg0/p$a;->h:Li0/a;

    iget-object v1, p0, Lg0/p$a;->i:Ljava/lang/Object;

    invoke-interface {v0, v1}, Li0/a;->b(Ljava/lang/Object;)V

    return-void
.end method
