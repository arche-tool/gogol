{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Projects.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of projects, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingProjectsList@.
module Network.Google.Resource.DFAReporting.Projects.List
    (
    -- * REST Resource
      ProjectsListResource

    -- * Creating a Request
    , projectsList'
    , ProjectsList'

    -- * Request Lenses
    , plQuotaUser
    , plPrettyPrint
    , plUserIp
    , plSearchString
    , plIds
    , plProfileId
    , plSortOrder
    , plKey
    , plPageToken
    , plSortField
    , plOauthToken
    , plAdvertiserIds
    , plMaxResults
    , plFields
    , plAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingProjectsList@ which the
-- 'ProjectsList'' request conforms to.
type ProjectsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "projects" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "searchString" Text :>
                   QueryParams "ids" Int64 :>
                     QueryParam "sortOrder"
                       DfareportingProjectsListSortOrder
                       :>
                       QueryParam "key" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "sortField"
                             DfareportingProjectsListSortField
                             :>
                             QueryParam "oauth_token" Text :>
                               QueryParams "advertiserIds" Int64 :>
                                 QueryParam "maxResults" Int32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Alt :>
                                       Get '[JSON] ProjectsListResponse

-- | Retrieves a list of projects, possibly filtered.
--
-- /See:/ 'projectsList'' smart constructor.
data ProjectsList' = ProjectsList'
    { _plQuotaUser     :: !(Maybe Text)
    , _plPrettyPrint   :: !Bool
    , _plUserIp        :: !(Maybe Text)
    , _plSearchString  :: !(Maybe Text)
    , _plIds           :: !(Maybe Int64)
    , _plProfileId     :: !Int64
    , _plSortOrder     :: !(Maybe DfareportingProjectsListSortOrder)
    , _plKey           :: !(Maybe Text)
    , _plPageToken     :: !(Maybe Text)
    , _plSortField     :: !(Maybe DfareportingProjectsListSortField)
    , _plOauthToken    :: !(Maybe Text)
    , _plAdvertiserIds :: !(Maybe Int64)
    , _plMaxResults    :: !(Maybe Int32)
    , _plFields        :: !(Maybe Text)
    , _plAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plQuotaUser'
--
-- * 'plPrettyPrint'
--
-- * 'plUserIp'
--
-- * 'plSearchString'
--
-- * 'plIds'
--
-- * 'plProfileId'
--
-- * 'plSortOrder'
--
-- * 'plKey'
--
-- * 'plPageToken'
--
-- * 'plSortField'
--
-- * 'plOauthToken'
--
-- * 'plAdvertiserIds'
--
-- * 'plMaxResults'
--
-- * 'plFields'
--
-- * 'plAlt'
projectsList'
    :: Int64 -- ^ 'profileId'
    -> ProjectsList'
projectsList' pPlProfileId_ =
    ProjectsList'
    { _plQuotaUser = Nothing
    , _plPrettyPrint = True
    , _plUserIp = Nothing
    , _plSearchString = Nothing
    , _plIds = Nothing
    , _plProfileId = pPlProfileId_
    , _plSortOrder = Nothing
    , _plKey = Nothing
    , _plPageToken = Nothing
    , _plSortField = Nothing
    , _plOauthToken = Nothing
    , _plAdvertiserIds = Nothing
    , _plMaxResults = Nothing
    , _plFields = Nothing
    , _plAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
plQuotaUser :: Lens' ProjectsList' (Maybe Text)
plQuotaUser
  = lens _plQuotaUser (\ s a -> s{_plQuotaUser = a})

-- | Returns response with indentations and line breaks.
plPrettyPrint :: Lens' ProjectsList' Bool
plPrettyPrint
  = lens _plPrettyPrint
      (\ s a -> s{_plPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
plUserIp :: Lens' ProjectsList' (Maybe Text)
plUserIp = lens _plUserIp (\ s a -> s{_plUserIp = a})

-- | Allows searching for projects by name or ID. Wildcards (*) are allowed.
-- For example, \"project*2015\" will return projects with names like
-- \"project June 2015\", \"project April 2015\", or simply \"project
-- 2015\". Most of the searches also add wildcards implicitly at the start
-- and the end of the search string. For example, a search string of
-- \"project\" will match projects with name \"my project\", \"project
-- 2015\", or simply \"project\".
plSearchString :: Lens' ProjectsList' (Maybe Text)
plSearchString
  = lens _plSearchString
      (\ s a -> s{_plSearchString = a})

-- | Select only projects with these IDs.
plIds :: Lens' ProjectsList' (Maybe Int64)
plIds = lens _plIds (\ s a -> s{_plIds = a})

-- | User profile ID associated with this request.
plProfileId :: Lens' ProjectsList' Int64
plProfileId
  = lens _plProfileId (\ s a -> s{_plProfileId = a})

-- | Order of sorted results, default is ASCENDING.
plSortOrder :: Lens' ProjectsList' (Maybe DfareportingProjectsListSortOrder)
plSortOrder
  = lens _plSortOrder (\ s a -> s{_plSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plKey :: Lens' ProjectsList' (Maybe Text)
plKey = lens _plKey (\ s a -> s{_plKey = a})

-- | Value of the nextPageToken from the previous result page.
plPageToken :: Lens' ProjectsList' (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | Field by which to sort the list.
plSortField :: Lens' ProjectsList' (Maybe DfareportingProjectsListSortField)
plSortField
  = lens _plSortField (\ s a -> s{_plSortField = a})

-- | OAuth 2.0 token for the current user.
plOauthToken :: Lens' ProjectsList' (Maybe Text)
plOauthToken
  = lens _plOauthToken (\ s a -> s{_plOauthToken = a})

-- | Select only projects with these advertiser IDs.
plAdvertiserIds :: Lens' ProjectsList' (Maybe Int64)
plAdvertiserIds
  = lens _plAdvertiserIds
      (\ s a -> s{_plAdvertiserIds = a})

-- | Maximum number of results to return.
plMaxResults :: Lens' ProjectsList' (Maybe Int32)
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
plFields :: Lens' ProjectsList' (Maybe Text)
plFields = lens _plFields (\ s a -> s{_plFields = a})

-- | Data format for the response.
plAlt :: Lens' ProjectsList' Alt
plAlt = lens _plAlt (\ s a -> s{_plAlt = a})

instance GoogleRequest ProjectsList' where
        type Rs ProjectsList' = ProjectsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ProjectsList'{..}
          = go _plQuotaUser (Just _plPrettyPrint) _plUserIp
              _plSearchString
              _plIds
              _plProfileId
              _plSortOrder
              _plKey
              _plPageToken
              _plSortField
              _plOauthToken
              _plAdvertiserIds
              _plMaxResults
              _plFields
              (Just _plAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsListResource)
                      r
                      u