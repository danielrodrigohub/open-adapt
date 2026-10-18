.class public final Lr2/j$b;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Lr2/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr2/k$a<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field public final a:Lp2/a;

.field public final synthetic b:Lr2/j;


# direct methods
.method public constructor <init>(Lr2/j;Lp2/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr2/j$b;->b:Lr2/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lr2/j$b;->a:Lp2/a;

    return-void
.end method
