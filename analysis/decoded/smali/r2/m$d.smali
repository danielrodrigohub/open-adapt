.class public final Lr2/m$d;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Lr2/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr2/n<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lh3/h;

.field public final synthetic c:Lr2/m;


# direct methods
.method public constructor <init>(Lr2/m;Lh3/h;Lr2/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh3/h;",
            "Lr2/n<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lr2/m$d;->c:Lr2/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lr2/m$d;->b:Lh3/h;

    .line 3
    iput-object p3, p0, Lr2/m$d;->a:Lr2/n;

    return-void
.end method
