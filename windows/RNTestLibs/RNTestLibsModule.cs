using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Test.Libs.RNTestLibs
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNTestLibsModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNTestLibsModule"/>.
        /// </summary>
        internal RNTestLibsModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNTestLibs";
            }
        }
    }
}
